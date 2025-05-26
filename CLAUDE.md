# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build/Lint/Test Commands
- Format: `prettier --write <file>` (JS/TS/HTML/CSS), `stylua <file>` (Lua), `rustfmt <file>` (Rust)
- Lint: `eslint <file>` (JS/TS), `flake8 <file>` (Python)
- For projects with package.json: `npm run lint`, `npm run test`, `npm test -- -t "<test name>"`

## Code Style Guidelines
- Use NvChad's formatting conventions: 2-space indentation for JS/TS/HTML/CSS, 4-space for Python
- Import order: built-ins first, then third-party, then local modules
- Use TypeScript for type safety when available
- Variable naming: camelCase for variables/functions, PascalCase for classes/components
- Error handling: prefer try/catch with specific error types
- Comments: document "why" not "what"
- Prefer async/await over callbacks
- Format on save is enabled - respect existing formatting patterns
- Follow existing patterns in similar files when making changes