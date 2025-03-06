#!/bin/sh

# Verifica si Firebase está inicializado
if [ ! -f ".firebaserc" ]; then
  echo "Inicializando Firebase Emulator..."
  firebase init --project "$FIREBASE_PROJECT"
fi

# Inicia Firebase Emulator Suite
firebase emulators:start --only auth,firestore,storage,database --project "$FIREBASE_PROJECT" --import=./firebase --export-on-exit
