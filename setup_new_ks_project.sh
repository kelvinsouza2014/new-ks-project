#! /bin/bash
mkdir new_ks_project && cd new_ks_project
mkdir developer && cd developer
echo "# New_Project" > briefing.md
echo "# Dictionary" > dictionary.txt
echo -e "# Notes\n" > notes.txt
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
echo -e "// Imports variables" > _index.scss
cd ../
mkdir mixins && cd mixins
mkdir mixins-scss
echo -e "// Imports mixins" > _index.scss
cd ../
echo "// Main style" > style.scss
cd ../../../
echo -e "# editorconfig.org\n\nroot = true\n\n[*]\ncharset = utf-8\nindent_style = space\nindent_size = 2\ninsert_final_newline = true\nmax_line_length = 80\ntrim_trailing_whitespace = true\n\n[*.ts]\nquote_type = single\n\n[*.md]\nmax_line_length = off\ntrim_trailing_whitespace = false" > .editorconfig
echo -e "{\n\t\"trailingComma\": \"es5\",\n\t\"semi\": true,\n\t\"printWidth\": 80\n}" > .prettierrc
echo -e "node_modules\ndeveloper" > .gitignore
echo -e "<!DOCTYPE html>\n<html lang=pt-br>\n\t<head>\n\t\t<meta charset=UTF-8>\n\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n\t\t<title>New KS Project</title>\n\t\t<link rel=stylesheet href=./dist/css/style.css>\n\t</head>\n\t<body>\n\t\t\n\t\t<script type=module src=./dist/js/main.js></script>\n\t</body>\n</html>" > index.html
echo -e "{\n\t\"compilerOptions\": {\n\t\t\"target\": \"ES2022\",\n\t\t\"outDir\": \"./dist/js\",\n\t\t\"noEmitOnError\": true,\n\t\t\"module\": \"ESNext\",\n\t\t\"moduleResolution\": \"node\",\n\t\t\"strict\": true,\n\t\t\"esModuleInterop\": true,\n\t\t\"baseUrl\": \"./\",\n\t\t\"paths\": {\n\t\t\t\"*\": [\"node_modules/*\"]\n\t\t}\n\t},\n\t\"include\": [\"./src/**/*\"],\n\t\"exclude\": [\"node_modules\"]\n}" > tsconfig.json
echo "# New_KS_Project" > README.md
npm init -y
npm install --save-dev typescript sass
