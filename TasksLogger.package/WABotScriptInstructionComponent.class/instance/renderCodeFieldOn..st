rendering
renderCodeFieldOn: html
	"Display the field to enter a block of JavaScript code"
			
	html tbsFormGroup: [
        html label
            for: 'code';
            with: 'Code'.

        html textArea
            on: #value of: (instruction perform: #code);
            tbsFormControl;
            id: 'code';
            rows: 10;
            class: 'code-editor';
            attributeAt: 'spellcheck' put: 'false'.
    ].