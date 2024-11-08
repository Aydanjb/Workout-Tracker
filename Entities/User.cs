﻿using System;
using System.Collections.Generic;

namespace Workout_Tracker.Entities;

public partial class User
{
    public int Id { get; set; }

    public string Username { get; set; } = null!;

    public string Email { get; set; } = null!;

    public string Password { get; set; } = null!;

    public virtual ICollection<Workout> Workouts { get; set; } = new List<Workout>();
}
