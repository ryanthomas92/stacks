#Data Structures: Stacks and Queues

Stacks and queues are two commonly used data structures.  You can read about them below or watch [this video](https://www.youtube.com/watch?v=6QS_Cup1YoI). If you watch the video, note that all the operations mentioned take O(1) time.

##Stacks

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Data_stack.svg/2000px-Data_stack.svg.png" width="400px" alt="stack image with push and pop">

Stacks as a data structure are a lot like stacks as a physical structure. Think of stacks of dishes or books. We can remove an item from the top of the stack (by `pop`ing), or add an item to the top of the stack (by `push`ing it). While we may be able to Jenga stacks of real world objects, the data structure only allows us to manipulate the top item of the stack.  The `push` and `pop` operations for a stack are both O(1) - constant time. Some stack implementations also allow us to `peek` at the value of the top item without actually `pop`ing it off of the stack.

Stacks are "Last In, First Out" -- the last item pushed on top of a stack will be the first thing popped off of the stack.  

<img src="http://stratton.d11.org/PublishingImages/kid%20with%20pancakes.gif" alt="child defending stack of pancakes using fork and knife" width="400px">

*Don't you dare `pop` from Jimmy's stack of pancakes.*

### Thinking with Stacks

1. Draw a stack after each of the following operations:

  * PUSH 0
  * POP
  * PUSH 2
  * PUSH 4
  * PUSH 6
  * POP
  * PUSH 8

  <details><summary>click for answer</summary>
    ```
    * start     []
    * PUSH 0    [0]
    * POP       []
    * PUSH 2    [2]
    * PUSH 4    [2, 4]
    * PUSH 6    [2, 4, 6]
    * POP       [2, 4]
    * PUSH 8    [2, 4, 8]
    ```
  </details>

1. Stacks and queues are often implemented with linked lists. Think about how you'd use a linked list to make a stack.  Where will you put the "top" of the stack? How would you add something to the top the stack? How would you take something off?

 <details><summary>super stuck? click for an answer...</summary>
 > The "top" could be the head of the linked list. You could use `prepend` to `push` something onto the top. You could `delete` the list's head and return it to `pop`.
 </details>

1. It's also pretty natural to use arrays for stacks given the built-in methods we have access to in JavaScript.  So, let's think of arrays.  Where would you put the "top" of the stack? How would you add something to the top the stack? How would you take something off?

 <details><summary>super stuck? click for an answer...</summary>
 > The "top" could be the end of the array, and you could use array methods `push` and `pop`.  Thanks, JavaScript!
 </details>

1. **Stretch:** How would you implement a stack with a fixed-size array?

####Design Decisions

Would you use a stack or a queue to...

1. ... print out a list of instructions that must be done in order?

1. ... allow a user to undo changes to a document, one by one?

1. ... let users create playlists and play back the songs?

1. ... display *only* the 10 most recent messages a user posted, in the order they were posted?


#### Stacks

1. **The Call Stack**

 Most programming languages rely on something called the "call stack," especially for recursion. The call stack keeps track of function calls that are in the process of executing.  When a function is called, it's `push`ed onto the call stack. When the function returns, it's `pop`ed off of the stack.

 Here's a recursive `factorial` function:

 ```js
 function factorial(num){
   if (num > 1){
     return num * factorial(num-1);
   } else if (num === 1 || num === 0){
     return 1;
   } else {
     console.log("can't do factorial of this number!");
     return undefined;
   }
 }

 factorial(3);
 // => 6
 ```

 Write out the full call stack for `factorial(3)` at each step in the function's execution.

1. **Stretch:** Try out [this stack challenge](stacks-challenge.md), an epic battle for correct code!
