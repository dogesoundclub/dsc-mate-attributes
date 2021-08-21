import database from "./database.json";

let trait_types: string[] = ["Level"];
const map: { trait_type: string, value: any, max_value?: number }[][] = [];

for (const token of database.collection) {
    const attributes: { trait_type: string, value: any, max_value?: number }[] = [{
        trait_type: "Level",
        value: token.levels.Attributes,
        max_value: 11,
    }];
    for (const [trait_type, value] of Object.entries(token.properties)) {
        if (trait_types.includes(trait_type) !== true) {
            trait_types.push(trait_type);
        }
        attributes.push({ trait_type, value });
    }
    map.push(attributes);
}

trait_types = trait_types.sort((a, b) => {
    if (a < b) { return -1; }
    if (a > b) { return 1; }
    return 0;
});
console.log(trait_types);
