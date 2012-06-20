# Who Has The Ball

We use hydra for distributed testing, which works well enough, but the problem is only one pair can use it at a time. To make sure people don't collide, we track who is using it with a packman doll. If you have packman, you can test, if you don't you find out who does, and ask them to give it to you next.

The ball thing works great for a small team, ok for a large team, but recently we became a giant team, and it just all falls apart. This is a simple app to aid in tracking who has the right to run tests, and the order of who is next.

## Installation

Only really depends on ruby. The commandline app requires the commander gem. To set the host name, change line 21 of `ApplicationController`