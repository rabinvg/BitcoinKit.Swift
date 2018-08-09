import Foundation

class MainNet: NetworkProtocol {
    let name = "livenet"
    let alias = "mainnet"
    let pubKeyHash: UInt8 = 0x00
    let privateKey: UInt8 = 0x80
    let scriptHash: UInt8 = 0x05
    let xPubKey: UInt32 = 0x0488b21e
    let xPrivKey: UInt32 = 0x0488ade4
    let magic: UInt32 = 0xf9beb4d9
    let port: UInt32 = 8333

    let dnsSeeds = [
        "seed.bitcoin.sipa.be",         // Pieter Wuille
        "dnsseed.bluematt.me",          // Matt Corallo
        "dnsseed.bitcoin.dashjr.org",   // Luke Dashjr
        "seed.bitcoinstats.com",        // Chris Decker
        "seed.bitnodes.io",             // Addy Yeow
        "bitseed.xf2.org",              // Jeff Garzik
        "seed.bitcoin.jonasschnelli.ch",// Jonas Schnelli
        "bitcoin.bloqseeds.net",        // Bloq
        "seed.ob1.io",                  // OpenBazaar
    ]

    let genesisBlock = BlockFactory.shared.block(
            withHeader: BlockHeader(
                    version: 1,
                    previousBlockHeaderReversedHex: "0000000000000000000000000000000000000000000000000000000000000000",
                    merkleRootReversedHex: "4a5e1e4baab89f3a32518a88c31bc87f618f76673e2cc77ab2127b7afdeda33b",
                    timestamp: 1231006505,
                    bits: 486604799,
                    nonce: 2083236893
            ),
            height: 0)

    let checkpointBlock = BlockFactory.shared.block(
            withHeader: BlockHeader(
                    version: 536870912,
                    previousBlockHeaderReversedHex: "0000000000000000002eca92f4e44dcf144115851689ace0ff4ce271792f16fe",
                    merkleRootReversedHex: "e1c8d65b4669eca626e8179164d7854a80ef9c81a25a2b16e4ad56763a106baa",
                    timestamp: 1532852371,
                    bits: 388976507,
                    nonce: 3273320796
            ),
            height: 534240)

}
