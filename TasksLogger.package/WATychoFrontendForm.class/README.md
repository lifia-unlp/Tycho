Form with validation helpers.
Abstract class, my subclasses should implement:
- #renderFieldsOn: although one could simply override #renderContentOn:
- #succeed, which will be called when the form is submitted and passes validation
- #initializeValidators, which must be called after the form's underlying object is created

Optionally, override or extend
- #renderButtonsOn, which has cancel and save by default, linked to the corresponding controlling messages