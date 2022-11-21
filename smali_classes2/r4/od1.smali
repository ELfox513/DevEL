.class public final Lr4/od1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Ljava/util/Set<",
        "Lr4/ve1<",
        "Lr4/c91;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/bd1;


# direct methods
.method public constructor <init>(Lr4/bd1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/od1;->a:Lr4/bd1;

    return-void
.end method

.method public static b(Lr4/bd1;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bd1;",
            ")",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/c91;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lr4/bd1;->m()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/od1;->a:Lr4/bd1;

    invoke-virtual {v0}, Lr4/bd1;->m()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
