window.onload = function() {
    const todoList = document.getElementById('todoList');
    const inputTodo = document.getElementById('inputTodo');
    const btnAdd = document.getElementById('btnAdd');

    const todos = [];

    // 세션 스토리지 데이터 불러오기
    const sessTodos = sessionStorage.getItem('todos');
    console.log(sessTodos);

    if(sessTodos != null){

        const splitTodos = sessTodos.split(',');

        for(const todo of splitTodos){
            todos.push(todo);
        }
    }

    // 세션 스토리지 데이터로 리스트 생성
    todos.forEach((todo)=>{
        makeTodoList(todo);
    });

    btnAdd.addEventListener('click', function(e){
        let todoValue = inputTodo.value;

        if(todoValue ==''){
            alert('할일을 입력하세요.');
            return;
        }
    
        // 스토리지 저장
        todos.push(todoValue);
        sessionStorage.setItem('todos',todos);

        makeTodoList(todoValue, todos.length-1);
        inputTodo.value = '';
    });

        function makeTodoList(todo){
            const listItem = document.createElement('li');
            listItem.className = 'd-flex list-group-item';
            listItem.innerText = todo;

            const listBtn = document.createElement('button');
            listBtn.className = 'btn-close ms-auto';
            listBtn.onclick = function(e){
                if(confirm('삭제하시겠습니까?')){
                    let pNode = e.target.parentNode;
                    todoList.removeChild(pNode);
                }
            
            const txt = e.target.parentNode.innerText;
            const indexOfValue = todos.indexOf(txt);
            
            todos.splice(indexOfValue, 1);                    
            
            if(todos.length > 0){
                sessionStorage.setItem('todos', todos);
            }else{
                sessionStorage.removeItem('todos');
            }
            
        console.log(todos);

        }
        
        listItem.appendChild(listBtn);
        todoList.appendChild(listItem);
    }

};
