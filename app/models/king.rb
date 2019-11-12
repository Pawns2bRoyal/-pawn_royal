class King < Piece
    
<<<<<<< HEAD
    def valid_move?(new_x_coordinate, new_y_coordinate, id = nil, color = nil)
        x_distance = x_distance(new_x_coordinate)
        y_distance = y_distance(new_y_coordinate)

        (x_distance == 1 && y_distance == 0) ||
        (y_distance == 1 && x_distance == 0) ||
        (y_distance == 1 && y_distance == x_distance) ||
        legal_to_castle?(new_x_coordinate, new_y_coordinate)
    end
=======
>>>>>>> ee8c5d3c161ff331846101214d2a5613b4f7d8df
end
