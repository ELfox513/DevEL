.class public Lx5/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/h;->d(Lj5/i;)Lj5/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj5/a<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lx5/h;


# direct methods
.method public constructor <init>(Lx5/h;)V
    .locals 0

    iput-object p1, p0, Lx5/h$c;->a:Lx5/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lj5/i;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lx5/h$c;->b(Lj5/i;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public b(Lj5/i;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/i<",
            "TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
