# imba-todo-mvc

implement [todomvc](https://todomvc.com/examples/preact/dist/) using [imba](imba.io)
- repo https://www.github.com/me7/imba-todo-mvc
- reference https://github.com/trafnar/todomvc-imba


## how do i
- [] no todo page


## Knowledge from reference repo
-  how to add @hotkey('enter') to input = [use form without button](https://github.com/trafnar/todomvc-imba/blob/f9587ff7d2487f6d1bac215a72a01e64f51f4af7/js/TodoMVC.imba#L35-L37)

```imba
<form @submit.prevent=handleAddTodo>
	<input bind=newTodoText .new-todo placeholder="What needs to be done?" autofocus>
```
- [add methods to state](https://github.com/trafnar/todomvc-imba/blob/f9587ff7d2487f6d1bac215a72a01e64f51f4af7/js/TodoMVCState.imba#L13) (add/edit/deleteTodo setAll/clearComplete/setFilter save)
- [monitor hashchange event](https://github.com/trafnar/todomvc-imba/blob/f9587ff7d2487f6d1bac215a72a01e64f51f4af7/js/TodoMVC.imba#L18-L25)
```imba
	def mount
		# start listening for route changes
		router.on "hashchange" do doRouting()
		doRouting()
	
	def doRouting
		state.setFilter router.hash.replace("#/", "").trim()
		render()
```