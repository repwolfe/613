import { MitzvahModel } from '../mitzvah.model';
import { VerseModel } from '../verse.model';

export interface RambamModel extends MitzvahModel {
	mitzvahNumber: number,
	bookName: string,
	bookNameEn: string,
	chapter: number,
	verse: number,
	type: 'D' | 'P' | 'M' | 'R',	// D(eos), P(eulah), M(iddos), (dibbu)R
	whoAppliesId: 'A' | 'M' | 'W' | 'Y' | 'I' | 'L' | 'K' | 'D' | 'G' | 'B' | 'Z',	// A(ll), M(en), W(omen), Y(isroel), (Y)I(sroel Men), L(eviim), K(ohanim), (Kohen Ga)D(ol), (kin)G, B(eis Din), Z(arim)
	punishmentId: 'N' | 'K' | 'B' | 'S' | 'F' | 'C' | 'H' | 'M',		// N(one), K(ares), (Misah) B(idei Shamayim), S(kilah), (Serei)F(ah), C(henek), H(ereg), M(alkos)
	madahTitle: string,
	originalText: string
}