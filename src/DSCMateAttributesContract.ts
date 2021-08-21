import { BigNumberish } from "ethers";
import Contract from "./Contract";
import Klaytn from "./Klaytn";

class DSCMateAttributesContract extends Contract {

    constructor() {
        super("0xB16cA0035f398EA513c063a2F61C7631413bCD7d", require("./DSCMateAttributesContractABI.json"));
    }

    public async setLevel(mateId: BigNumberish, level: number): Promise<void> {
        const register = Klaytn.walletAddress;
        await this.contract.methods.setLevel(mateId, level).send({ from: register, gas: 1500000 });
    }

    public async level(mateId: BigNumberish): Promise<number> {
        return await this.contract.methods.level(mateId).call();
    }

    public async setFace(mateId: BigNumberish, face: string): Promise<void> {
        const register = Klaytn.walletAddress;
        await this.contract.methods.setFace(mateId, face).send({ from: register, gas: 1500000 });
    }

    public async face(mateId: BigNumberish): Promise<string> {
        return await this.contract.methods.face(mateId).call();
    }

    public async setFaceDetailA(mateId: BigNumberish, faceDetailA: string): Promise<void> {
        const register = Klaytn.walletAddress;
        await this.contract.methods.setFaceDetailA(mateId, faceDetailA).send({ from: register, gas: 1500000 });
    }

    public async faceDetailA(mateId: BigNumberish): Promise<string> {
        return await this.contract.methods.faceDetailA(mateId).call();
    }

    public async setFaceDetailB(mateId: BigNumberish, faceDetailB: string): Promise<void> {
        const register = Klaytn.walletAddress;
        await this.contract.methods.setFaceDetailB(mateId, faceDetailB).send({ from: register, gas: 1500000 });
    }

    public async faceDetailB(mateId: BigNumberish): Promise<string> {
        return await this.contract.methods.faceDetailB(mateId).call();
    }

    public async setNeck(mateId: BigNumberish, neck: string): Promise<void> {
        const register = Klaytn.walletAddress;
        await this.contract.methods.setNeck(mateId, neck).send({ from: register, gas: 1500000 });
    }

    public async neck(mateId: BigNumberish): Promise<string> {
        return await this.contract.methods.neck(mateId).call();
    }

    public async setMouth(mateId: BigNumberish, mouth: string): Promise<void> {
        const register = Klaytn.walletAddress;
        await this.contract.methods.setMouth(mateId, mouth).send({ from: register, gas: 1500000 });
    }

    public async mouth(mateId: BigNumberish): Promise<string> {
        return await this.contract.methods.mouth(mateId).call();
    }

    public async setEyes(mateId: BigNumberish, eyes: string): Promise<void> {
        const register = Klaytn.walletAddress;
        await this.contract.methods.setEyes(mateId, eyes).send({ from: register, gas: 1500000 });
    }

    public async eyes(mateId: BigNumberish): Promise<string> {
        return await this.contract.methods.eyes(mateId).call();
    }

    public async setForehead(mateId: BigNumberish, forehead: string): Promise<void> {
        const register = Klaytn.walletAddress;
        await this.contract.methods.setForehead(mateId, forehead).send({ from: register, gas: 1500000 });
    }

    public async forehead(mateId: BigNumberish): Promise<string> {
        return await this.contract.methods.forehead(mateId).call();
    }

    public async setHeadwear(mateId: BigNumberish, headwear: string): Promise<void> {
        const register = Klaytn.walletAddress;
        await this.contract.methods.setHeadwear(mateId, headwear).send({ from: register, gas: 1500000 });
    }

    public async headwear(mateId: BigNumberish): Promise<string> {
        return await this.contract.methods.headwear(mateId).call();
    }

    public async setHeadwearDetail(mateId: BigNumberish, headwearDetail: string): Promise<void> {
        const register = Klaytn.walletAddress;
        await this.contract.methods.setHeadwearDetail(mateId, headwearDetail).send({ from: register, gas: 1500000 });
    }

    public async headwearDetail(mateId: BigNumberish): Promise<string> {
        return await this.contract.methods.headwearDetail(mateId).call();
    }

    public async setEars(mateId: BigNumberish, ears: string): Promise<void> {
        const register = Klaytn.walletAddress;
        await this.contract.methods.setEars(mateId, ears).send({ from: register, gas: 1500000 });
    }

    public async ears(mateId: BigNumberish): Promise<string> {
        return await this.contract.methods.ears(mateId).call();
    }

    public async setItems(mateId: BigNumberish, items: string): Promise<void> {
        const register = Klaytn.walletAddress;
        await this.contract.methods.setItems(mateId, items).send({ from: register, gas: 1500000 });
    }

    public async items(mateId: BigNumberish): Promise<string> {
        return await this.contract.methods.items(mateId).call();
    }
}

export default new DSCMateAttributesContract();
