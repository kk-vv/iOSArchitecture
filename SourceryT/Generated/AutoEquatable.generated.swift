// Generated using Sourcery 0.16.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


//AUTOEQUATABLE
// MARK: - GoodsModel
extension GoodsModel: Equatable {
    static func == (lhs: GoodsModel, rhs: GoodsModel) -> Bool {
        guard lhs.name == rhs.name else {
            return false
        }
        guard lhs.id == rhs.id else {
            return false
        }
        guard lhs.type == rhs.type else {
            return false
        }
        guard lhs.description == rhs.description else {
            return false
        }
        guard lhs.images == rhs.images else {
            return false
        }
        return true
    }
}
// MARK: - PersonModel
extension PersonModel: Equatable {
    static func == (lhs: PersonModel, rhs: PersonModel) -> Bool {
        guard lhs.name == rhs.name else {
            return false
        }
        guard lhs.age == rhs.age else {
            return false
        }
        guard lhs.noWarning == rhs.noWarning else {
            return false
        }
        guard lhs.hasWarning == rhs.hasWarning else {
            return false
        }
        guard lhs.noWarning2 == rhs.noWarning2 else {
            return false
        }
        guard lhs.noWarning3 == rhs.noWarning3 else {
            return false
        }
        return true
    }
}
