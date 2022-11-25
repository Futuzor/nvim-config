class Personaje {
    vida = 100;
    atk = 15;
    def = 10;
    nombre = undefined;

    constructor(nombre) {
        this.nombre = nombre;
    }

    getVida() {
        return this.vida;
    }

    hablar(texto) {
        const msg = new SpeechSynthesisUtterance(texto);
        speechSynthesis.speak(msg);
    }

    cagarseTPM() {
        return "ME CAGO EN TU PUTA MADREEEEEEEEEEEEEEEEEEEEEE!!!!";
    }
}

// El constructor crea un objeto "Personaje" poniendo un nombre como parámetro.

let p1 = new Personaje('Paco');
p1.hablar('cojones')


