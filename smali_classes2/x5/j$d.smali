.class public Lx5/j$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/j;->S()Lj5/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj5/h<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lx5/j;


# direct methods
.method public constructor <init>(Lx5/j;)V
    .locals 0

    iput-object p1, p0, Lx5/j$d;->a:Lx5/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lj5/i;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lx5/j$d;->b(Ljava/lang/Void;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Void;)Lj5/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            ")",
            "Lj5/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p1

    return-object p1
.end method
