using Godot;
using System;

public class Spritely : Node2D
{
    // Declare member variables here. Examples:
    // private int a = 2;
    // private string b = "text";

    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
        var random = new Random();
        (this.GetNode("Sprite") as Sprite).RegionRect = new Rect2(random.Next(0, 16), random.Next(0, 16), 32, 32);
    }

//  // Called every frame. 'delta' is the elapsed time since the previous frame.
//  public override void _Process(float delta)
//  {
//      
//  }
}
