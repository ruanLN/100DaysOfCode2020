def my_agent(observation, configuration):
    import operator
    #print(observation)
    #print(configuration)
    free_columns = [x for x in range(configuration.columns) if observation.board[x] == 0]
    #print(free_columns)
    my_count_in_column = {}
    for column in free_columns:
        #print(my_count_in_column)
        c = 0
        for r in range(configuration.rows):
            if observation.board[column + configuration.columns * r] == observation.mark:
                c += 1
        my_count_in_column[column] = c
    #print(my_count_in_column)
    return max(my_count_in_column.items(), key=operator.itemgetter(1))[0]
