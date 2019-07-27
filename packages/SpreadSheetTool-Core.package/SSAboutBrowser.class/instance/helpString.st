contents
helpString

	^
'#Open SqueakSheet
There are various ways to open a SqueakSheet:
- Use TheWorldMainDockingBar
- Perform #sheet on an arbitrary object (for example: `OrderedCollection new sheet`)
- Type some expression, and in the code pane menu, select ''Sheet it'' (or press <cmd>h)
- In the debugger menu of a morph''s halo, select ''Inspect with SqueakSheet''

#Saving and Loading sheets
Just use the buttons. One special feature: To change the receiver of a sheet, save it into image, open a new sheet on the wished receiver (see above) and use the Open button to open the saved sheet.

#Write Formulae
You can enter true Smalltalk formulae into any cell. Use `self` to access the inspected object, or `cell` to reference other cells. For example, you can use expressions such as:

- `self extent`
- `cell left`
- `cell rowHeaderAt: 3`
- `cell belowBy: 4`

For a complete documentation of the cross-refencing protocol, please take a look at the right.

Use the ''auto evaluation'' button to control whether referenced cells should be automatically updated. Use the ''stepping'' button to control whether all formulae should be evaluated constantly.

#Exchange the model
If you are tired of text representations, you are free to choose another model for a cell. To do so, click the Model button and choose another model. If the model is unknown, fill in the configuration formular by specifying the appropriate selectors that are used to control the model. By clicking the getter/setter button, you can edit the corresponding formulae.

For example, you can choose the `SSEvaluator` model that allows you to enter another expression. In the setter formula, use `value` to manipulate the underlying object. Your getter formula could be `^self at: 1`, and the corresponding setter formula could be `self at: 1 put: value`. If you want back the classical model, click the Model button again and choose `SSHybridFormulaHolder`.

The requirements to a model that can be used in SqueakSheet are the following:
- Each a selector for getting and setting the aspect to display/manipulate exists
- A toolbuilder selector exists that takes a ToolBuilder as an argument and returns a Morph or a ToolBuilderSpec
- To manipulate an object, the model must implement the observer protocol and notify updates of the contentGetter.

#Preferences
There is one preference for inline syntax errors. Just go to PreferencesBrowser and feel free to customize it!'