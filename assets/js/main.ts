
import 'phoenix_html'

import '../css/global.css'

import App from './App.svelte'

new App ({
    target: document.body,

    props: {
        name: 'Aru'
    }
})