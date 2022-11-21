.class public final Lr4/w84;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lr4/y74;

.field public final c:Lr4/z84;

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lr4/y74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lr4/y74;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/w84;->d:Z

    iput-object p1, p0, Lr4/w84;->a:Ljava/lang/Object;

    iput-object p2, p0, Lr4/w84;->b:Lr4/y74;

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/w84;->c:Lr4/z84;

    return-void
.end method

.method public constructor <init>(Lr4/z84;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/w84;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/w84;->a:Ljava/lang/Object;

    iput-object v0, p0, Lr4/w84;->b:Lr4/y74;

    iput-object p1, p0, Lr4/w84;->c:Lr4/z84;

    return-void
.end method

.method public static a(Ljava/lang/Object;Lr4/y74;)Lr4/w84;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lr4/y74;",
            ")",
            "Lr4/w84<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lr4/w84;

    invoke-direct {v0, p0, p1}, Lr4/w84;-><init>(Ljava/lang/Object;Lr4/y74;)V

    return-object v0
.end method

.method public static b(Lr4/z84;)Lr4/w84;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/z84;",
            ")",
            "Lr4/w84<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lr4/w84;

    invoke-direct {v0, p0}, Lr4/w84;-><init>(Lr4/z84;)V

    return-object v0
.end method


# virtual methods
.method public final c()Z
    .locals 1

    iget-object v0, p0, Lr4/w84;->c:Lr4/z84;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
