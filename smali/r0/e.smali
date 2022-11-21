.class public Lr0/e;
.super Lr0/d;
.source "SourceFile"

# interfaces
.implements Lq0/f;


# instance fields
.field public final b:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    invoke-direct {p0, p1}, Lr0/d;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    iput-object p1, p0, Lr0/e;->b:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public I()I
    .locals 1

    iget-object v0, p0, Lr0/e;->b:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0

    return v0
.end method

.method public T0()J
    .locals 2

    iget-object v0, p0, Lr0/e;->b:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method
