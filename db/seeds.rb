REACT_QUESTIONS = [
  {
      question_text: 'What is the primary purpose of React?',
      options: ['Server-side scripting', 'Backend development', 'Building user interfaces', 'Database management'],
      correct_option_index: 2
  },
  {
    question_text: 'What is JSX in React?',
    options: ['A CSS preprocessor', 'A syntax extension for JavaScript', 'A JavaScript library', 'A backend framework'],
    correct_option_index: 1
  },
  {
    question_text: 'Which method is used to create components in React?',
    options: ['createReactComponent()', 'React.createElement()', 'createComponent()', 'renderComponent()'],
    correct_option_index: 1
  },
  {
    question_text: 'Which of the following is used to manage state in React?',
    options: ['props', 'events', 'useState', 'JSX'],
    correct_option_index: 2
  },
  {
    question_text: 'What is the purpose of the key attribute in React lists?',
    options: ['To style the list items', 'To bind data to the list', 'To uniquely identify list elements', 'To sort the list items'],
    correct_option_index: 2
  },
  {
    question_text: 'How do you pass data to a child component in React?',
    options: ['By using state', 'By using props', 'By using events', 'By using hooks'],
    correct_option_index: 1
  },
  {
    question_text: 'What does React use to increase performance by updating the real DOM selectively?',
    options: ['Direct DOM manipulation', 'Web Workers', 'Virtual DOM', 'Shadow DOM'],
    correct_option_index: 2
  },
  {
    question_text: 'Which hook is used to perform side effects in a functional component?',
    options: ['useReducer', 'useEffect', 'useState', 'useMemo'],
    correct_option_index: 1
  },
  {
    question_text: 'What happens when the state of a React component changes?',
    options: ['The DOM is reloaded', 'The component re-renders', 'The component unmounts', 'The virtual DOM is deleted'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the default method to stop the propagation of an event in React?',
    options: ['event.stopPropagation()', 'event.preventDefault()', 'event.stop()', 'event.cancel()'],
    correct_option_index: 0
  },
  {
    question_text: 'Which of these statements about props and state is correct?',
    options: ['Props are mutable, and state is immutable', 'Props are immutable, and state is mutable', 'Both props and state are immutable', 'Both props and state are mutable'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the purpose of React.Fragment?',
    options: ['To group a list of children without adding extra nodes to the DOM', 'To handle errors in React applications', 'To update the virtual DOM', 'To style child components'],
    correct_option_index: 0
  },
  {
    question_text: "Which of the following is true about React's one-way data binding?",
    options: ['Child components can directly modify parent state', 'Data flows from parent to child only', 'Data flows in both directions', 'Data cannot be passed between components'],
    correct_option_index: 1
  },
  {
    question_text: 'What does the useReducer hook return?',
    options: ['A state and a dispatch function', 'A reducer and an initial state', 'A state and a setState function', 'A component and its context'],
    correct_option_index: 0
  },
  {
    question_text: 'In which lifecycle method should you make API calls?',
    options: ['componentWillUnmount', 'componentDidMount', 'shouldComponentUpdate', 'componentDidUpdate'],
    correct_option_index: 1
  },
  {
    question_text: 'What does the ReactDOM.render() method do?',
    options: ['Creates a React component', 'Renders a React element into the DOM', 'Mounts a component to a variable', 'Updates the component\'s state'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the significance of super(props) in a React constructor?',
    options: ['To call the parent class constructor', 'To bind the component\'s methods', 'To initialize state', 'To add lifecycle methods'],
    correct_option_index: 0
  },
  {
    question_text: 'Which of the following is a controlled component in React?',
    options: ['A component that stores state internally', 'A component whose value is controlled by React state', 'A component with no state', 'A functional component'],
    correct_option_index: 1
  },
  {
    question_text: 'What is React.memo() used for?',
    options: ['To manage global state', 'To optimize functional components by preventing unnecessary re-renders', 'To create higher-order components', 'To bind props to methods'],
    correct_option_index: 1
  },
  {
    question_text: 'What does the useContext hook provide?',
    options: ['A way to manage side effects', 'A way to use state without a class', 'Access to the nearest context value', 'A way to memoize functions'],
    correct_option_index: 2
  },
  {
    question_text: 'Which lifecycle method is called before a component is removed from the DOM?',
    options: ['componentWillUnmount', 'componentDidUnmount', 'componentWillDelete', 'componentDidUpdate'],
    correct_option_index: 0
  },
  {
    question_text: 'What is a React Portal?',
    options: ['A new way to manage state', 'A method to render children into a DOM node outside of the parent hierarchy', 'A way to memoize components', 'A plugin for server-side rendering'],
    correct_option_index: 1
  },
  {
    question_text: 'How do you handle forms in React?',
    options: ['By using jQuery', 'By using controlled or uncontrolled components', 'By using the DOM API', 'By using Redux'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the default value of props in a React component?',
    options: ['null', 'undefined', 'An empty object', 'An empty array'],
    correct_option_index: 2
  },
  {
    question_text: 'How can you force a React component to re-render?',
    options: ['Call componentDidUpdate()', 'Use this.forceUpdate()', 'Use shouldComponentUpdate()', 'Modify props'],
    correct_option_index: 1
  },
  {
    question_text: 'Which hook can be used to replace lifecycle methods in functional components?',
    options: ['useReducer', 'useContext', 'useEffect', 'useMemo'],
    correct_option_index: 2
  },
  {
    question_text: 'What is the main feature of a higher-order component (HOC)?',
    options: ['It can only be used with class components', 'It replaces lifecycle methods', 'It takes a component and returns a new component', 'It renders fragments'],
    correct_option_index: 2
  },
  {
    question_text: 'Which of the following is NOT a React hook?',
    options: ['useEffect', 'useRef', 'useMemo', 'useLifeCycle'],
    correct_option_index: 3
  },
  {
    question_text: 'What does the children prop represent?',
    options: ['The DOM element of the component', 'The state of the parent component', 'The nested content within a component', 'The key property'],
    correct_option_index: 2
  },
  {
    question_text: 'What is the purpose of the shouldComponentUpdate lifecycle method?',
    options: ['To mount the component', 'To determine whether the component should re-render', 'To clean up resources', 'To fetch data'],
    correct_option_index: 1
  },
  {
    question_text: 'How does React handle events differently from HTML?',
    options: ['React events are synchronous', 'React events are named in camelCase', 'React uses bubbling only', 'React events do not support handlers'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the default behavior of useEffect if no dependency array is provided?',
    options: ['It does not run', 'It runs after every render', 'It runs only once', 'It runs before the component unmounts'],
    correct_option_index: 1
  },
  {
    question_text: 'Which of the following is true about React keys?',
    options: ['Keys should be unique among siblings', 'Keys are required for all elements', 'Keys are global identifiers', 'Keys improve component performance'],
    correct_option_index: 0
  },
  {
    question_text: 'What does the useRef hook return?',
    options: ['A state and its updater function', 'A list of dependencies', 'A mutable ref object', 'An unchangeable variable'],
    correct_option_index: 2
  },
  {
    question_text: 'Which method is used to handle errors in React components?',
    options: ['componentDidCatch', 'getDerivedStateFromError', 'shouldComponentUpdate', 'render'],
    correct_option_index: 1
  },
  {
    question_text: 'What is React\'s main advantage over plain JavaScript?',
    options: ['Enhanced styling features', 'Easier database connectivity', 'Component-based architecture', 'Built-in support for REST APIs'],
    correct_option_index: 2
  },
  {
    question_text: 'Which package is used to enable routing in React?',
    options: ['React Navigator', 'React Router Native', 'React Router', 'React Linker'],
    correct_option_index: 2
  },
  {
    question_text: 'How do you conditionally render elements in React?',
    options: ['By using JavaScript\'s conditional operators', 'By adding conditions in JSX tags', 'By modifying the DOM', 'By using React Router'],
    correct_option_index: 0
  },
  {
    question_text: 'What does the useCallback hook do?',
    options: ['Tracks state updates', 'Executes a function after a delay', 'Memoizes a callback function', 'Returns a cached version of a dependency'],
    correct_option_index: 2
  },
  {
    question_text: 'How is state updated in a functional component?',
    options: ['Using this.setState()', 'Directly modifying state variables', 'Using the updater function from useState', 'Using props'],
    correct_option_index: 2
  },
  {
    question_text: 'What is the context API used for?',
    options: ['Managing HTTP requests', 'Sharing data without passing props', 'Optimizing rendering', 'Updating state directly'],
    correct_option_index: 1
  },
  {
    question_text: 'What does React use to determine when to re-render a component?',
    options: ['Server-side logs', 'State or prop changes', 'DOM events', 'Changes in JSX'],
    correct_option_index: 1
  },
  {
    question_text: 'How do you add inline styles in React?',
    options: ['Using a JavaScript object', 'Using a CSS class', 'Using JSX attributes', 'Using an external stylesheet'],
    correct_option_index: 0
  },
  {
    question_text: 'Which hook is used to create local variables that persist across renders?',
    options: ['useState', 'useRef', 'useEffect', 'useMemo'],
    correct_option_index: 1
  },
  {
    question_text: 'How do you debug a React app?',
    options: ['By using Chrome DevTools', 'By using React Developer Tools', 'By adding console logs in JSX', 'By using a debugger in package.json'],
    correct_option_index: 1
  },
  {
    question_text: 'What does the useMemo hook do?',
    options: ['Stores references', 'Updates state asynchronously', 'Memoizes expensive computations', 'Tracks dependencies'],
    correct_option_index: 2
  },
  {
    question_text: 'Which of the following is an invalid React component name?',
    options: ['Header', 'header', 'Footer', 'App'],
    correct_option_index: 1
  },
  {
    question_text: 'What does setState do?',
    options: ['Replaces the current state', 'Merges the current and new state', 'Deletes the current state', 'Updates props'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the primary use of React.StrictMode?',
    options: ['Highlighting potential problems in the app', 'Boosting app performance', 'Preventing state updates', 'Enabling server-side rendering'],
    correct_option_index: 0
  },
  {
    question_text: 'What does React.lazy allow?',
    options: ['Memoizing state updates', 'Code-splitting components for lazy loading', 'Rendering a component immediately', 'Preventing unnecessary renders'],
    correct_option_index: 1
  }
]

PYTHON_QUESTIONS = [
  {
    question_text: 'Which of the following is used to define a block of code in Python?',
    options: ['Semicolon', 'Indentation', 'Braces', 'Parentheses'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the output of print(2 ** 3)?',
    options: ['5', '6', '8', '9'],
    correct_option_index: 2
  },
  {
    question_text: 'Which of the following is not a keyword in Python?',
    options: ['pass', 'eval', 'execute', 'assert'],
    correct_option_index: 2
  },
  {
    question_text: 'What is the correct way to declare a function in Python?',
    options: ['func myFunction():', 'function myFunction():', 'def myFunction():', 'declare myFunction():'],
    correct_option_index: 2
  },
  {
    question_text: 'What is the output of print(type([]))?',
    options: ["<class 'array'>", "<class 'list'>", "<class 'tuple'>", "<class 'dict'>"],
    correct_option_index: 1
  },
  {
    question_text: 'How can you generate random numbers in Python?',
    options: ['Using the random library', 'Using the random module', 'Using the random_numbers package', 'Using numpy'],
    correct_option_index: 1
  },
  {
    question_text: 'What does the len() function do in Python?',
    options: ['Returns the number of arguments in a function', 'Converts a value to a string', 'Returns the length of a collection', 'Checks for null values'],
    correct_option_index: 2
  },
  {
    question_text: 'How do you start a comment in Python?',
    options: ['#', '//', '<!--', '%'],
    correct_option_index: 0
  },
  {
    question_text: 'Which method is used to add an element to a list?',
    options: ['add()', 'append()', 'extend()', 'insert()'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the output of print(5 // 2)?',
    options: ['2.5', '3.0', '2', 'None'],
    correct_option_index: 2
  },
  {
    question_text: 'Which keyword is used to handle exceptions in Python?',
    options: ['try...except', 'except', 'catch', 'error'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the default mode of the open() function?',
    options: ['write', 'binary', 'read', 'append'],
    correct_option_index: 2
  },
  {
    question_text: 'Which operator is used for exponentiation in Python?',
    options: ['^', '&', '**', '%'],
    correct_option_index: 2
  },
  {
    question_text: 'What does the is keyword do?',
    options: ['Compares memory locations of two objects', 'Checks if two objects are identical', 'Both A and B', 'None of the above'],
    correct_option_index: 2
  },
  {
    question_text: 'What is the output of print(bool([]))?',
    options: ['False', 'True', 'None', 'Error'],
    correct_option_index: 0
  },
  {
    question_text: 'What does str.strip() do in Python?',
    options: ['Removes all whitespace from a string', 'Removes leading and trailing whitespace from a string', 'Converts a string to lowercase', 'Splits a string'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the output of list(range(3))?',
    options: ['[1, 2, 3]', '[0, 1, 2]', '[0, 1, 2, 3]', 'None'],
    correct_option_index: 1
  },
  {
    question_text: "What is the output of print('Python'[0:2])?",
    options: ['Py', 'yt', "'Py'", "'Pyt'"],
    correct_option_index: 2
  },
  {
    question_text: 'What is the correct way to declare a dictionary in Python?',
    options: ["{'key': 'value'}", "{'key', 'value'}", "['key': 'value']", "['key', 'value']"],
    correct_option_index: 0
  },
  {
    question_text: 'What does the pop() method do?',
    options: ['Removes the first element from a list', 'Removes the last element from a list', 'Deletes all elements', 'Adds an element to a list'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the use of __init__ in Python?',
    options: ["Initialize a class method", "Initialize an object's attributes", 'Initialize static variables', 'Initialize constants'],
    correct_option_index: 1
  },
  {
    question_text: 'What does break do in a loop?',
    options: ['Continues the next iteration', 'Restarts the loop', 'Exits the loop', 'Skips the next step'],
    correct_option_index: 2
  },
  {
    question_text: 'What is a tuple?',
    options: ['A mutable collection', 'An immutable collection', 'A dictionary', 'A class'],
    correct_option_index: 1
  },
  {
    question_text: 'How do you write a lambda function?',
    options: ['def lambda():', 'lambda ->', 'lambda x: x', 'None of the above'],
    correct_option_index: 2
  },
  {
    question_text: 'How do you convert an integer to a string?',
    options: ['str(int)', 'String(int)', 'str()', 'cast(int)'],
    correct_option_index: 2
  },
  {
    question_text: 'What is the output of print(type(5.0))?',
    options: ["<class 'int'>", "<class 'double'>", "<class 'float'>", "<class 'long'>"],
    correct_option_index: 2
  },
  {
    question_text: 'Which function is used to find the largest item in an iterable?',
    options: ['min()', 'sum()', 'max()', 'top()'],
    correct_option_index: 2
  },
  {
    question_text: 'Which of the following is a valid variable name in Python?',
    options: ['2variable', 'variable_2', 'variable-2', 'variable 2'],
    correct_option_index: 1
  },
  {
    question_text: "What is the output of bool('False')?",
    options: ['False', 'True', 'None', 'Error'],
    correct_option_index: 1
  },
  {
    question_text: 'Which method is used to return the number of items in a list?',
    options: ['count()', 'len()', 'size()', 'total()'],
    correct_option_index: 1
  },
  {
    question_text: 'Which of the following is not a core data type in Python?',
    options: ['List', 'Dictionary', 'Tuple', 'Class'],
    correct_option_index: 3
  },
  {
    question_text: 'What is the result of 3 == 3.0?',
    options: ['True', 'False', 'Error', 'None'],
    correct_option_index: 0
  },
  {
    question_text: 'What does a[-1] do in a list?',
    options: ['Accesses the first element', 'Raises an error', 'Accesses the last element', 'None of the above'],
    correct_option_index: 2
  },
  {
    question_text: 'How do you install a Python package?',
    options: ['install package_name', 'pip install package_name', 'python install package_name', 'setup install package_name'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the output of print(type((1,)))?',
    options: ["<class 'list'>", "<class 'tuple'>", "<class 'set'>", "<class 'dict'>"],
    correct_option_index: 1
  },
  {
    question_text: 'Which keyword is used to create a class in Python?',
    options: ['define', 'struct', 'class', 'object'],
    correct_option_index: 2
  },
  {
    question_text: 'How do you access items in a dictionary?',
    options: ['dict.index()', 'dict.key()', "dict['key']", 'dict.value()'],
    correct_option_index: 2
  },
  {
    question_text: 'What is the output of print(5 % 2)?',
    options: ['2', '5', '1', 'None'],
    correct_option_index: 2
  },
  {
    question_text: 'What is the default value of variables in Python?',
    options: ['Variables do not have a default value', '0', 'None', 'False'],
    correct_option_index: 0
  },
  {
    question_text: 'Which of the following creates an empty set?',
    options: ['{}', 'set()', '[]', '()'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the correct file extension for Python files?',
    options: ['.pyth', '.pt', '.py', '.python'],
    correct_option_index: 2
  },
  {
    question_text: 'What does str.upper() do?',
    options: ['Converts a string to lowercase', 'Removes whitespaces', 'Converts a string to uppercase', 'Splits a string'],
    correct_option_index: 2
  },
  {
    question_text: 'How do you get the last item in a list?',
    options: ['list[len(list)]', 'list.last()', 'list[-1]', 'list[None]'],
    correct_option_index: 2
  },
  {
    question_text: 'How do you check if a key exists in a dictionary?',
    options: ['if key in dict.keys()', 'if key in dict', 'if dict.contains(key)', 'if key in dict.values()'],
    correct_option_index: 1
  },
  {
    question_text: 'Which statement is used to terminate a loop?',
    options: ['stop', 'terminate', 'break', 'exit'],
    correct_option_index: 2
  },
  {
    question_text: 'How do you create a set in Python?',
    options: ['[]', '()', '{}', 'set()'],
    correct_option_index: 3
  },
  {
    question_text: "What is the result of len({1: 'a', 2: 'b', 3: 'c'})?",
    options: ['4', '6', '3', 'Error'],
    correct_option_index: 2
  },
  {
    question_text: 'What does continue do in a loop?',
    options: ['Stops the loop', 'Skips the current iteration', 'Exits the program', 'Restarts the loop'],
    correct_option_index: 1
  },
  {
    question_text: 'Which of the following is a Python boolean value?',
    options: ['True', 'truth', 'yes', 'None'],
    correct_option_index: 0
  },
  {
    question_text: "What is the result of print(2 * '3')?",
    options: ['6', '33', "'33'", 'Error'],
    correct_option_index: 2
  }
]

JAVASCRIPT_QUESTIONS = [
  {
    question_text: 'Which of the following is a correct way to declare a variable in JavaScript?',
    options: ['var myVariable;', 'let myVariable;', 'constant myVariable;', 'int myVariable;'],
    correct_option_index: 1
  },
  {
    question_text: 'What does typeof null return?',
    options: ['"null"', '"undefined"', '"object"', '"number"'],
    correct_option_index: 2
  },
  {
    question_text: 'How do you write a single-line comment in JavaScript?',
    options: ['<!-- Comment -->', '// Comment', '/* Comment */', '# Comment'],
    correct_option_index: 1
  },
  {
    question_text: 'Which of the following is not a JavaScript data type?',
    options: ['String', 'Number', 'Boolean', 'Float'],
    correct_option_index: 3
  },
  {
    question_text: 'What is the result of 2 + "3"?',
    options: ['5', '"23"', '"5"', 'NaN'],
    correct_option_index: 1
  },
  {
    question_text: 'Which method is used to parse a string to an integer?',
    options: ['parseFloat()', 'parseInt()', 'Number()', 'toInteger()'],
    correct_option_index: 1
  },
  {
    question_text: 'Which company developed JavaScript?',
    options: ['Microsoft', 'Apple', 'Oracle', 'Netscape'],
    correct_option_index: 3
  },
  {
    question_text: 'How do you create a function in JavaScript?',
    options: ['def myFunction() {}', 'function myFunction() {}', 'func myFunction() {}', 'create myFunction() {}'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the output of console.log(typeof NaN)?',
    options: ['"NaN"', '"number"', '"undefined"', '"object"'],
    correct_option_index: 1
  },
  {
    question_text: 'Which symbol is used for strict equality comparison?',
    options: ['=', '==', '===', '!=='],
    correct_option_index: 2
  },
  {
    question_text: 'How do you add an element to the end of an array in JavaScript?',
    options: ['array.insert()', 'array.append()', 'array.push()', 'array.add()'],
    correct_option_index: 2
  },
  {
    question_text: 'Which keyword is used to check if a property exists in an object?',
    options: ['hasOwnProperty', 'in', 'contains', 'exists'],
    correct_option_index: 1
  },
  {
    question_text: 'What will Boolean("false") return?',
    options: ['true', 'false', 'NaN', 'Error'],
    correct_option_index: 0
  },
  {
    question_text: 'What is the correct way to write a JavaScript array?',
    options: ['{1, 2, 3}', '[1, 2, 3]', '(1, 2, 3)', '<1, 2, 3>'],
    correct_option_index: 1
  },
  {
    question_text: 'How can you create a constant in JavaScript?',
    options: ['let x = 5;', 'var x = 5;', 'const x = 5;', 'const x == 5;'],
    correct_option_index: 2
  },
  {
    question_text: 'Which JavaScript method is used to access an HTML element by its ID?',
    options: ['getElementByClassName()', 'getElementByTagName()', 'getElementById()', 'querySelector()'],
    correct_option_index: 2
  },
  {
    question_text: 'What does the isNaN() function do?',
    options: ['Checks if a value is a string', 'Checks if a value is not a number', 'Checks if a value is null', 'Checks if a value is undefined'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the default value of undefined in JavaScript?',
    options: ['0', 'undefined', 'null', 'false'],
    correct_option_index: 1
  },
  {
    question_text: 'Which operator is used for exponentiation in JavaScript?',
    options: ['^', 'exp()', '**', '**'],
    correct_option_index: 3
  },
  {
    question_text: 'What is the output of console.log(0.1 + 0.2 === 0.3)?',
    options: ['true', 'false', 'NaN', 'Error'],
    correct_option_index: 1
  },
  {
    question_text: 'What does JSON.stringify() do?',
    options: ['Parses a JSON string', 'Converts an object to a JSON string', 'Converts a JSON string to an object', 'Converts a string to a number'],
    correct_option_index: 1
  },
  {
    question_text: 'What will console.log("5" - 3) output?',
    options: ['"53"', '2', 'NaN', 'Error'],
    correct_option_index: 1
  },
  {
    question_text: 'Which of the following is a falsy value in JavaScript?',
    options: ['1', '"false"', '0', '{}'],
    correct_option_index: 2
  },
  {
    question_text: 'How can you call a function named myFunction?',
    options: ['call myFunction();', 'call function myFunction();', 'myFunction();', 'execute myFunction();'],
    correct_option_index: 2
  },
  {
    question_text: 'Which keyword is used to define a class in JavaScript?',
    options: ['struct', 'class', 'object', 'define'],
    correct_option_index: 1
  },
  {
    question_text: 'Which of the following is not a valid JavaScript loop?',
    options: ['for', 'foreach', 'while', 'do...while'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the purpose of Array.prototype.slice()?',
    options: ['Modify the original array', 'Create a shallow copy of part of an array', 'Remove elements from an array', 'Sort an array'],
    correct_option_index: 1
  },
  {
    question_text: 'What will console.log(1 == "1") output?',
    options: ['true', 'false', 'true', 'NaN'],
    correct_option_index: 2
  },
  {
    question_text: 'What does the this keyword refer to in JavaScript?',
    options: ['The global object in strict mode', 'The object from which the function was called', 'The object that owns the current code', 'Always the global object'],
    correct_option_index: 2
  },
  {
    question_text: 'How can you convert a string to a number in JavaScript?',
    options: ['String()', 'Number()', 'toString()', 'parseChar()'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the output of console.log(typeof [])?',
    options: ['"array"', '"object"', '"undefined"', '"null"'],
    correct_option_index: 1
  },
  {
    question_text: 'What will the const keyword do in JavaScript?',
    options: ['Create a variable that can be re-assigned', 'Create a block-scoped constant', 'Create a global variable', 'Declare a function'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the purpose of the finally block in a try...catch statement?',
    options: ['Executes if there is an error', 'Skips execution if there is no error', 'Executes regardless of whether an error occurs or not', 'Stops code execution'],
    correct_option_index: 2
  },
  {
    question_text: 'How do you check if an array includes a specific value?',
    options: ['array.search(value)', 'array.includes(value)', 'array.find(value)', 'array.has(value)'],
    correct_option_index: 1
  },
  {
    question_text: 'Which method can you use to join all elements of an array into a single string?',
    options: ['concat()', 'join()', 'merge()', 'split()'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the output of console.log(1 + "2" + 3)?',
    options: ['6', '123', '"123"', 'Error'],
    correct_option_index: 2
  },
  {
    question_text: 'How do you remove the last element of an array?',
    options: ['array.popLast()', 'array.pop()', 'array.remove()', 'array.delete()'],
    correct_option_index: 1
  },
  {
    question_text: 'What does setTimeout() do in JavaScript?',
    options: ['Executes code immediately', 'Delays code execution for a specified time', 'Stops code execution', 'Creates an infinite loop'],
    correct_option_index: 1
  },
  {
    question_text: 'What will console.log(undefined == null) return?',
    options: ['false', 'true', 'NaN', 'Error'],
    correct_option_index: 1
  },
  {
    question_text: 'Which of the following is true about let and var?',
    options: ['Both are function-scoped', 'let is block-scoped, var is function-scoped', 'var is block-scoped, let is global', 'Both are block-scoped'],
    correct_option_index: 1
  },
  {
    question_text: 'What does Promise.all() do?',
    options: ['Resolves the first promise in an array', 'Resolves all promises and returns their results as an array', 'Rejects the first promise in an array', 'Returns a promise that never resolves'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the purpose of the spread operator (...)?',
    options: ['Combine two arrays', 'Merge two objects', 'Expand elements of an array or object', 'Clone an array'],
    correct_option_index: 2
  },
  {
    question_text: 'How do you stop an interval set by setInterval()?',
    options: ['stopInterval()', 'clearInterval()', 'resetInterval()', 'deleteInterval()'],
    correct_option_index: 1
  },
  {
    question_text: 'What will console.log([] == ![]) return?',
    options: ['false', 'true', 'NaN', 'Error'],
    correct_option_index: 1
  },
  {
    question_text: 'How do you add a property to an object dynamically?',
    options: ['object.addProperty(key, value)', 'object.append(key, value)', 'object[key] = value', 'object.set(key, value)'],
    correct_option_index: 2
  },
  {
    question_text: 'Which method is used to remove whitespace from both ends of a string?',
    options: ['strip()', 'remove()', 'trim()', 'clean()'],
    correct_option_index: 2
  },
  {
    question_text: 'What will console.log([] + {}) return?',
    options: ['Error', '"[object Object]"', 'NaN', '"undefined"'],
    correct_option_index: 1
  },
  {
    question_text: 'What will console.log(typeof function() {}) return?',
    options: ['"method"', '"class"', '"function"', '"object"'],
    correct_option_index: 2
  },
  {
    question_text: 'What is the difference between map() and forEach()?',
    options: ['Both return arrays', 'map() returns a new array, forEach() does not', 'forEach() returns a new array, map() does not', 'Both modify the original array'],
    correct_option_index: 1
  },
  {
    question_text: 'What will console.log(!!"") output?',
    options: ['"true"', '"false"', 'false', 'NaN'],
    correct_option_index: 2
  }
]

HTML_QUESTIONS = [
  {
    question_text: 'What does HTML stand for?',
    options: ['HyperText Markup Language', 'HyperText Markdown Language', 'HighText Markup Language', 'None of the above'],
    correct_option_index: 0
  },
  {
    question_text: 'Which HTML tag is used to define an unordered list?',
    options: ['<ul>', '<ol>', '<li>', '<u>'],
    correct_option_index: 0
  },
  {
    question_text: 'What is the purpose of the <title> tag in HTML?',
    options: ['To define the main heading of the page', "To set the title of the document shown in the browser's title bar", 'To create a title for an image', 'None of the above'],
    correct_option_index: 1
  },
  {
    question_text: 'Which HTML attribute specifies an alternate text for an image if the image cannot be displayed?',
    options: ['title', 'alt', 'src', 'href'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the correct way to create a hyperlink in HTML?',
    options: ['<a href="url">Link</a>', '<a link="url">Link</a>', '<a src="url">Link</a>', '<link href="url">Link</link>'],
    correct_option_index: 0
  },
  {
    question_text: 'Which HTML tag is used to define the largest heading?',
    options: ['<h1>', '<head>', '<h6>', '<header>'],
    correct_option_index: 0
  },
  {
    question_text: 'Which attribute is used to specify the character encoding for an HTML document?',
    options: ['charset', 'encoding', 'lang', 'meta'],
    correct_option_index: 0
  },
  {
    question_text: 'What does the <br> tag do in HTML?',
    options: ['Inserts a horizontal rule', 'Inserts a line break', 'Creates a paragraph break', 'Formats text as bold'],
    correct_option_index: 1
  },
  {
    question_text: 'Which HTML tag is used to embed a video in a web page?',
    options: ['<media>', '<movie>', '<video>', '<embed>'],
    correct_option_index: 2
  },
  {
    question_text: 'How can you open a link in a new tab in HTML?',
    options: ['Add target="_new"', 'Add target="_blank"', 'Add new="tab"', 'Add blank="true"'],
    correct_option_index: 1
  },
  {
    question_text: 'Which tag is used to define a table in HTML?',
    options: ['<tr>', '<td>', '<table>', '<th>'],
    correct_option_index: 2
  },
  {
    question_text: 'What is the correct HTML for inserting a background color?',
    options: ['<body bg="yellow">', '<body style="background-color:yellow;">', '<background>yellow</background>', '<body color="yellow">'],
    correct_option_index: 1
  },
  {
    question_text: 'Which HTML element is used to define important text?',
    options: ['<b>', '<strong>', '<i>', '<mark>'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the correct way to add a comment in HTML?',
    options: ['<!-- Comment -->', '// Comment', '/* Comment */', '** Comment **'],
    correct_option_index: 0
  },
  {
    question_text: 'What is the purpose of the <meta> tag?',
    options: ['To store metadata about the web page', 'To create a footer', 'To define a clickable link', 'None of the above'],
    correct_option_index: 0
  },
  {
    question_text: 'Which HTML tag is used to display a scalar measurement within a range?',
    options: ['<progress>', '<meter>', '<range>', '<input>'],
    correct_option_index: 1
  },
  {
    question_text: 'What does the <iframe> tag do?',
    options: ['Embeds another document within the current HTML document', 'Creates a new tab', 'Embeds an image', 'Embeds a video'],
    correct_option_index: 0
  },
  {
    question_text: 'Which HTML attribute is used to define inline styles?',
    options: ['class', 'id', 'style', 'styles'],
    correct_option_index: 2
  },
  {
    question_text: 'What does the <header> element represent?',
    options: ['A container for introductory content or navigational links', 'A section of a table', 'A footer', 'None of the above'],
    correct_option_index: 0
  },
  {
    question_text: 'Which HTML element is used to define navigation links?',
    options: ['<nav>', '<ul>', '<menu>', '<div>'],
    correct_option_index: 0
  },
  {
    question_text: 'Which HTML element is used to specify a section of text that is quoted from another source?',
    options: ['<quote>', '<blockquote>', '<q>', '<citation>'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the correct syntax for adding a placeholder in an input field?',
    options: ['<input placeholder="Enter text">', '<input hint="Enter text">', '<input label="Enter text">', '<input text="Enter text">'],
    correct_option_index: 0
  },
  {
    question_text: 'Which element is used to group block-level content in HTML?',
    options: ['<span>', '<div>', '<section>', '<header>'],
    correct_option_index: 1
  },
  {
    question_text: 'Which tag is used for emphasizing text in HTML?',
    options: ['<i>', '<b>', '<em>', '<mark>'],
    correct_option_index: 2
  },
  {
    question_text: 'What is the correct HTML tag for the smallest heading?',
    options: ['<h6>', '<h5>', '<h1>', '<head>'],
    correct_option_index: 0
  }
]

CSS_QUESTIONS = [
  {
    question_text: 'What does CSS stand for?',
    options: ['Colorful Style Sheets', 'Creative Style Sheets', 'Cascading Style Sheets', 'Computer Style Sheets'],
    correct_option_index: 2
  },
  {
    question_text: 'Which HTML tag is used to apply external CSS?',
    options: ['<css>', '<style>', '<link>', '<script>'],
    correct_option_index: 2
  },
  {
    question_text: 'How do you add a background color in CSS?',
    options: ['background-color: red;', 'bg-color: red;', 'color: background red;', 'bg: red;'],
    correct_option_index: 0
  },
  {
    question_text: 'Which property is used to change the font size of an element?',
    options: ['font-style', 'text-size', 'font-size', 'text-style'],
    correct_option_index: 2
  },
  {
    question_text: 'What is the default position value in CSS?',
    options: ['relative', 'absolute', 'static', 'fixed'],
    correct_option_index: 2
  },
  {
    question_text: 'Which CSS property is used to create space inside the border of an element?',
    options: ['margin', 'padding', 'border-spacing', 'space'],
    correct_option_index: 1
  },
  {
    question_text: 'What does the z-index property control in CSS?',
    options: ['The visibility of an element', 'The stacking order of elements', 'The alignment of elements', 'The position of an element'],
    correct_option_index: 1
  },
  {
    question_text: 'How do you select an element with an ID of "header" in CSS?',
    options: ['.header', '#header', 'header', '*header'],
    correct_option_index: 1
  },
  {
    question_text: 'How can you make text bold in CSS?',
    options: ['font-style: bold;', 'font-weight: bold;', 'text-decoration: bold;', 'font-size: bold;'],
    correct_option_index: 1
  },
  {
    question_text: 'Which property is used to change the text color of an element?',
    options: ['font-color', 'color', 'text-color', 'style-color'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the correct syntax for adding a comment in CSS?',
    options: ['<!-- Comment -->', '// Comment', '/* Comment */', '** Comment **'],
    correct_option_index: 2
  },
  {
    question_text: 'How do you make an element invisible in CSS but still occupy space?',
    options: ['display: none;', 'visibility: hidden;', 'opacity: 0;', 'none of the above'],
    correct_option_index: 1
  },
  {
    question_text: 'Which property is used to control the spacing between lines of text?',
    options: ['line-height', 'text-spacing', 'letter-spacing', 'spacing'],
    correct_option_index: 0
  },
  {
    question_text: 'What is the difference between absolute and fixed positioning?',
    options: ['absolute is relative to the viewport, fixed is relative to the parent.', 'absolute is relative to the nearest positioned ancestor, fixed is relative to the viewport.', 'absolute is the default position, fixed is not.', 'None of the above'],
    correct_option_index: 1
  },
  {
    question_text: 'Which property is used to set the width of an element?',
    options: ['width', 'size', 'block-size', 'element-width'],
    correct_option_index: 0
  },
  {
    question_text: 'How do you apply a style to all <p> elements in a document?',
    options: ['p {}', '.p {}', '#p {}', '*p {}'],
    correct_option_index: 0
  },
  {
    question_text: 'How do you select elements with a specific class in CSS?',
    options: ['#classname', '.classname', 'classname', '*classname'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the CSS property to make text uppercase?',
    options: ['text-transform: uppercase;', 'text-case: uppercase;', 'font-transform: uppercase;', 'text-decoration: uppercase;'],
    correct_option_index: 0
  },
  {
    question_text: 'Which of the following units is relative to the font-size of the root element?',
    options: ['em', 'rem', '%', 'px'],
    correct_option_index: 1
  },
  {
    question_text: 'What is the default value of the flex-direction property in a flex container?',
    options: ['column', 'row', 'row-reverse', 'inherit'],
    correct_option_index: 1
  },
  {
    question_text: 'What does the hover pseudo-class do in CSS?',
    options: ['Changes styles when an element is clicked', 'Changes styles when an element is focused', 'Changes styles when an element is being hovered over', 'None of the above'],
    correct_option_index: 2
  },
  {
    question_text: 'Which CSS property is used to create rounded corners?',
    options: ['corner-radius', 'border-radius', 'round-radius', 'shape-radius'],
    correct_option_index: 1
  },
  {
    question_text: 'Which CSS property controls the transparency of an element?',
    options: ['opacity', 'visibility', 'filter', 'background-alpha'],
    correct_option_index: 0
  },
  {
    question_text: 'Which of these is a valid value for the position property?',
    options: ['float', 'relative', 'align', 'inline'],
    correct_option_index: 1
  },
  {
    question_text: 'Which CSS property is used to specify the space between the content and the border of an element?',
    options: ['margin', 'padding', 'spacing', 'border-spacing'],
    correct_option_index: 1
  }
]


ADMIN_EMAIL = ENV['ADMIN_EMAIL']
ADMIN_PASSWORD = ENV['ADMIN_PASSWORD']


admin_user = AdminUser.find_by(email: ADMIN_EMAIL)

if admin_user.nil?
  puts "Creating admin user"
  admin_user = AdminUser.create(
    email: ADMIN_EMAIL, 
    password: ADMIN_PASSWORD, 
    password_confirmation: ADMIN_PASSWORD,
    first_name: 'Admin', 
    last_name: 'User'
  )
  puts "Admin user created"
else
  puts "Admin user already exists"
end

if admin_user.topics.empty?
  puts "Creating topics"
  admin_user.topics.create(
    name: 'React', 
    active: true,
    description: 'React is a JavaScript library for building user interfaces.'
  )
  puts "React topic created"
  admin_user.topics.create(
    name: 'Python', 
    active: true,
    description: 'Python is a high-level, interpreted programming language.'
  )
  puts "Python topic created"
  admin_user.topics.create(
    name: 'JavaScript', 
    active: true,
    description: 'JavaScript is a programming language that runs on the client side.'
  )
  puts "JavaScript topic created"
  admin_user.topics.create(
    name: 'HTML', 
    active: true,
    description: 'HTML is a standard markup language for creating web pages.'
  )
  puts "HTML topic created"
  admin_user.topics.create(
    name: 'CSS', 
    active: true,
    description: 'CSS is a style sheet language used for describing the presentation of a document written in HTML.'
  )
  puts "CSS topic created"
  # admin_user.topics.create(
  #   name: 'Ruby', 
  #   active: true,
  #   description: 'Ruby is a dynamic, reflective, object-oriented, general-purpose programming language.'
  # )
  # puts "Ruby topic created"
  # admin_user.topics.create(
  #   name: 'SQL', 
  #   active: true,
  #   description: 'SQL is a domain-specific language used in programming and designed for managing data held in a relational database management system.'
  # )
  # puts "SQL topic created"
  # admin_user.topics.create(
  #   name: 'Git', 
  #   active: true,
  #   description: 'Git is a distributed version control system.'
  # )
  # puts "Git topic created"
  # admin_user.topics.create(
  #   name: 'GitHub', 
  #   active: true,
  #   description: 'GitHub is a web-based Git repository hosting service.'
  # )
  # puts "GitHub topic created"
  puts "Topics created"
else
  puts "Topics already exist"
end

admin_topics = admin_user.topics

admin_topics.each do |topic|
  puts "Creating questions for #{topic.name}"
  # check if topic has questions
  if topic.questions.empty?
    questions = REACT_QUESTIONS if topic.name == 'React'
    questions = PYTHON_QUESTIONS if topic.name == 'Python'
    questions = JAVASCRIPT_QUESTIONS if topic.name == 'JavaScript'
    questions = HTML_QUESTIONS if topic.name == 'HTML'
    questions = CSS_QUESTIONS if topic.name == 'CSS'
    questions.each do |question_data|
      puts "Creating question #{question_data[:question_text]}"
      option_a = question_data[:options][0]
      option_b = question_data[:options][1]
      option_c = question_data[:options][2]
      option_d = question_data[:options][3]
      correct_answers = {
        option_a => 'A',
        option_b => 'B',
        option_c => 'C',
        option_d => 'D'
      }
      correct_answer_text = question_data[:options][question_data[:correct_option_index]]
      correct_answer = correct_answers[correct_answer_text]
      topic.questions.create!(
        question_text: question_data[:question_text],
        option_a: option_a,
        option_b: option_b,
        option_c: option_c,
        option_d: option_d,
        correct_answer: correct_answer,
        active: true
      )
      puts "Question created"
    end
  end
end
