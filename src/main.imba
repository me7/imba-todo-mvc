
css
	.input px:15 py:5 bxs:md @focus:outline rose8 bd:1px warm2 ol@focus:0 fs:xl w:100
global css * bd:1px red2 box-sizing:border-box

tag Footer < footer
	<self[fs:3 c:warm5 lh:.4]>
		<p> "Double-click to edit a todo"
		<p> "Created by the TodoMVC Team"
		<p> "Part of TodoMVC"

tag Todo
	css .done td:line-through
	done = no
	<self[d:flex bdb:1px warm2 p:5]>
		<input type='checkbox' bind=done>
		<label[ml:4 fs:10 fs:3xl lh:1 c:cool5] .done=done> data

tag FilterPanel
	<self[d:flex as:stretch g:2 px:2]>
		<div[fl:1]> "3 items left!"
		<div> "All"
		<div> "Active"
		<div> "Completed"

tag App

	todo
	todos = ['aaaa','bbbb']

	def addTodo
		todos.push todo

	<self [d:vflex ff:sans h:100vh]>
		<h1[c:rose8 fs:4rem fw:400 m:0 as:center]> "todos"
		<input[as:stretch].input bind=todo @hotkey('d')=log(todo) placeholder='What needs to be done?'>
		<button @click=addTodo> "add todo"
		<div[fl:1]>
			for td in todos
				<Todo data=td>
		<FilterPanel>
		<Footer>
imba.mount <App>
