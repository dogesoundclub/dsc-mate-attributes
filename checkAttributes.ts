import DSCMateAttributesContract from "./src/DSCMateAttributesContract";

(async () => {
    for (let i = 0; i < 10000; i += 1) {
        if (
            await DSCMateAttributesContract.level(i) === 0 &&
            await DSCMateAttributesContract.face(i) === "" &&
            await DSCMateAttributesContract.faceDetailA(i) === "" &&
            await DSCMateAttributesContract.faceDetailB(i) === "" &&
            await DSCMateAttributesContract.neck(i) === "" &&
            await DSCMateAttributesContract.mouth(i) === "" &&
            await DSCMateAttributesContract.eyes(i) === "" &&
            await DSCMateAttributesContract.forehead(i) === "" &&
            await DSCMateAttributesContract.headwear(i) === "" &&
            await DSCMateAttributesContract.headwearDetail(i) === "" &&
            await DSCMateAttributesContract.ears(i) === "" &&
            await DSCMateAttributesContract.items(i) === ""
        ) {
            console.log(`Mate #${i} NOT Uploaded!`);
            break;
        } else {
            console.log(`Mate #${i} Checked.`);
        }
    }
})();