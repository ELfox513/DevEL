.class public final Lr4/um0;
.super Lr4/vm0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/vm0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lr4/vm0;-><init>()V

    iput-object p1, p0, Lr4/um0;->b:Ljava/lang/Object;

    return-void
.end method

.method public static g(Ljava/lang/Object;)Lr4/um0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lr4/um0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lr4/um0;

    invoke-direct {v0, p0}, Lr4/um0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final h()V
    .locals 1

    iget-object v0, p0, Lr4/um0;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lr4/vm0;->e(Ljava/lang/Object;)Z

    return-void
.end method
