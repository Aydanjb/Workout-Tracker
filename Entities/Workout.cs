using System;
using System.Collections.Generic;

namespace Workout_Tracker.Entities;

public partial class Workout
{
    public int Id { get; set; }

    public int UserId { get; set; }

    public int ExerciseId { get; set; }

    public int Reps { get; set; }

    public int Sets { get; set; }

    public double? Weight { get; set; }

    public DateOnly? ScheduledAt { get; set; }

    public virtual Exercise Exercise { get; set; } = null!;

    public virtual User User { get; set; } = null!;
}
