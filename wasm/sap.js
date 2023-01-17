var view1
var pInput
var out_buffer


async function init() {
    var memory = new WebAssembly.Memory({ initial: 2 })
    var response = await fetch('./module.wasm')
    var wasm = await WebAssembly.instantiateStreaming(fetch('./module.wasm'), {
        js: {mem: memory},
        wasi_snapshot_preview1: wasi.exports
    })

    view1 = new Uint8Array(memory.buffer)
    pInput = wasm.instance.exports.malloc(4096)
    out_buffer = wasm.instance.exports.out_buffer
}

init().then(() => console.log('Initiated'))

const encode = (memory, base, string) => {
    for (let i = 0; i < string.length; i++) {
        memory[base + i] = string.charCodeAt(i)
    }

    memory[base + string.length] = 0
}

const decode = (memory, base) => {
    let cursor = base
    let result = ''
    while (memory[cursor] !== 0) {
        result += String.fromCharCode(memory[cursor++])
    }
    return result
}

const do_interpret = () => {
    let code = document.getElementById('code').value
    encode(view1, pInput, code)
    instance.exports.interpret(view1)
    let output = decode(view1, out_buffer)
    document.getElementById('console').value = output
}

document.getElementById('runbtn').addEventListener('click', do_interpret)

