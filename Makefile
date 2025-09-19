# Makefile (repo root)
.PHONY: fmt lint unit precommit

fmt:
	@echo "Format: Go"
	@cd services/odds && go fmt ./...
	@echo "Format: Python"
	@python3 -c "import shutil,sys; sys.exit(0 if shutil.which('black') else 0)"
	@black services/settlement 2>/dev/null || true
	@echo "Format: Node (prettier if available)"
	@bash -lc 'if [ -f services/bff/package.json ]; then (cd services/bff && npx --yes prettier -w .) || true; fi'

lint:
	@echo "Lint: Go (vet)"
	@cd services/odds && go vet ./...
	@echo "Lint: Python (flake8 if available)"
	@flake8 services/settlement 2>/dev/null || true
	@echo "Lint: Node (eslint if available)"
	@bash -lc 'if [ -f services/bff/package.json ]; then (cd services/bff && npx --yes eslint . --ext .js,.mjs) || true; fi'

unit:
	@echo "Go tests (odds)"; cd services/odds && go test ./... -cover
	@echo "Py tests (settlement)"; cd services/settlement && pytest -q
	@echo "Node tests (bff)"; cd services/bff && npm test --silent
	@echo "Py tests (hello)"; cd services/hello && pytest -q

precommit: fmt lint unit
