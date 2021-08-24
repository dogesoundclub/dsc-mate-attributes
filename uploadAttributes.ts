import DSCMateAttributesContract from "./src/DSCMateAttributesContract";
import database from "./database.json";

(async () => {
    for (const [i, token] of database.collection.entries()) {
        if (
            i === 38 ||
            i === 39 ||
            i === 3238 ||
            i === 3239 ||
            i === 5805
        ) {
            await DSCMateAttributesContract.setLevel(i, token.levels.Attributes);
            for (const [trait_type, value] of Object.entries(token.properties)) {
                if (trait_type === "Face") {
                    await DSCMateAttributesContract.setFace(i, value as string);
                } else if (trait_type === "Face Detail A") {
                    await DSCMateAttributesContract.setFaceDetailA(i, value as string);
                } else if (trait_type === "Face Detail B") {
                    await DSCMateAttributesContract.setFaceDetailB(i, value as string);
                } else if (trait_type === "Neck") {
                    await DSCMateAttributesContract.setNeck(i, value as string);
                } else if (trait_type === "Mouth") {
                    await DSCMateAttributesContract.setMouth(i, value as string);
                } else if (trait_type === "Eyes") {
                    await DSCMateAttributesContract.setEyes(i, value as string);
                } else if (trait_type === "Forehead") {
                    await DSCMateAttributesContract.setForehead(i, value as string);
                } else if (trait_type === "Headwear") {
                    await DSCMateAttributesContract.setHeadwear(i, value as string);
                } else if (trait_type === "Headwear Detail") {
                    await DSCMateAttributesContract.setHeadwearDetail(i, value as string);
                } else if (trait_type === "Ears") {
                    await DSCMateAttributesContract.setEars(i, value as string);
                } else if (trait_type === "Items") {
                    await DSCMateAttributesContract.setItems(i, value as string);
                }
            }
            console.log(`Mate #${i} Uploaded.`);
        }
    }
})();