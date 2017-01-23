# 1. For a given person, return their favourite tv show

def fave_show(person_hash)
    show = person_hash[:favourites][:tv_show]
    return show
end

# 2. For a given person, check if they like a particular food

def fave_food(person_hash, food)
    #return person[:favourites][:things_to_eat].include?(food)
    foods = person_hash[:favourites][:things_to_eat]
    for item in foods
        if item == food
        return true
        else 
        return false
        end
    end
end

#return person[:favourites][:things_to_eat].include?(food)

# 3. Allow a new friend to be added to a given person

def add_friend (person_hash, friend)
    friends = person_hash[:friends].push friend
    return friends.last
end

# 4. Allow a friend to be removed from a given person

def lose_friend (person_hash, ex_friend)
    friends = person_hash[:friends]
    friends.delete ex_friend
    for friend in friends
        if friend == ex_friend
            return true
        else 
            return false
        end
    end
end

# 5. Find the total of everyone's money

def total_money(array)
    amount = 0
    for person in array
        amount += person[:monies]
    end
    return amount
end

# 6. For two given people, allow the first person to loan a given value of money to the other

def moneylender(person_hash_1, person_hash_2, loan)

    person_hash_1[:monies] -= loan
    new_balance_1=person_hash_1[:monies]

    person_hash_2[:monies] += loan
    new_balance_2=person_hash_2[:monies]

    result = [[person_hash_1[:name], new_balance_1], [person_hash_2[:name], new_balance_2]]

    return result

end



# 7. Find the set of everyone's favourite food joined together

def total_food(array)
    foods = []
    for person in array
        foods << person[:favourites][:things_to_eat]
    end
    return foods.flatten!
end



# 8. Find people with no friends

def no_mates(array)
    friendless = []
    for person in array
        if person[:friends].length == 0
            friendless << person[:name]
        end
    end
    return friendless
end

# INSANE
# Find the people who have the same favourite tv show

def similar_likes(array)
    tv_friends = []
    for shows array
        
    end

    return tv_friends
end










