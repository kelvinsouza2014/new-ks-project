mkdir new_ks_project && cd new_ks_project
mkdir developer && cd developer
echo "# New_Project" > briefing.md
echo "# Dictionary" > dictionary.txt
echo -e "# Notes\n\n# HTML\n<meta name=@viewport@ content=@width=device-width, initial-scale=1.0@>\n\n## Compilador TS (tsconfig.json)\n{\n@compilerOptions@: {\n@target@: @ES2022@,\n@outDir@: @./dist/js@,\n@noEmitOnError@: true,\n@module@: @esnext@,\n@moduleResolution@: @node@,\n@strict@: true,\n@esModuleInterop@: true,\n@baseUrl@: @./@,\n@paths@: {\n@*@: *<@node_modules/*@*>\n}\n},\n@include@: *<@./src/**/*@*>,\n@exclude@: *<@node_modules@*>\n}" > notes.txt
cd ../
mkdir dist && cd dist
mkdir css img js html
cd ../
mkdir src && cd src
mkdir components styles types utils
echo. > main.ts
cd styles
mkdir scss && cd scss
mkdir header main variables
cd variables
mkdir variables-scss
echo. > _index.scss
cd ../
mkdir mixins && cd mixins
mkdir mixins-scss
echo. > _index.scss
cd ../
echo "// SASS" > style.scss
cd ../../../
echo -e "<!DOCTYPE html>\n<html lang="pt-br">\n<head>\n<meta charset="UTF-8">\n<meta name="viewport" content="width=device-width, initial-scale=1.0">\n<title>New KS Project</title>\n<link rel="stylesheet" href="./dist/css/style.css">\n</head>\n<body>\n\n<script type="module" src="./dist/js/main.js"></script>\n</body>\n</html>" > index.html
echo -e "node_modules\ndeveloper" > .gitignore
echo -e "{\n"compilerOptions": {\n"target": "ES2022",\n"outDir": "./dist/js",\n"noEmitOnError": true,\n"module": "ES2022",\n"moduleResolution": "node",\n"strict": true,\n"esModuleInterop": true,\n"baseUrl": "./",\n"paths": {\n"*": ["node_modules/*"]\n}\n},\n"include": ["./src/**/*"],\n"exclude": ["node_modules"]\n}" > tsconfig.json
echo -e "# editorconfig.org\n\nroot = true\n\n[*]\ncharset = utf-8\nindent_style = space\nindent_size = 2\ninsert_final_newline = true\nmax_line_length = 80\ntrim_trailing_whitespace = true\n\n[*.ts]\nquote_type = single\n\n[*.md]\nmax_line_length = off\ntrim_trailing_whitespace = false" > .editorconfig
echo "# New_KS_Project" > README.md
npm init -y
npm install --save-dev typescript sass
