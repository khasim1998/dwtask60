%dw 2.0
output application/json
/*
here i used map function to convert Array of objects to single object and also i have used reduce function to reduce the given payload
*/
---
payload map ((item, index) ->{
    (item.company):item.id
} )reduce ((item, accumulator={}) ->accumulator ++  item )
