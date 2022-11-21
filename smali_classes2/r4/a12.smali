.class public final synthetic Lr4/a12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ps2;


# instance fields
.field public final a:Lr4/c12;

.field public final b:Lr4/e12;


# direct methods
.method public constructor <init>(Lr4/c12;Lr4/e12;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/a12;->a:Lr4/c12;

    iput-object p2, p0, Lr4/a12;->b:Lr4/e12;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/a12;->a:Lr4/c12;

    iget-object v1, p0, Lr4/a12;->b:Lr4/e12;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lr4/c12;->h(Lr4/e12;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method
