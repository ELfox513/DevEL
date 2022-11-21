.class public final Lr4/hs3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/is3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/is3<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field public volatile a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile b:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr4/hs3;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr4/is3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lr4/hs3;->c:Ljava/lang/Object;

    iput-object v0, p0, Lr4/hs3;->b:Ljava/lang/Object;

    iput-object p1, p0, Lr4/hs3;->a:Lr4/is3;

    return-void
.end method

.method public static b(Lr4/is3;)Lr4/is3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lr4/is3<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lr4/is3<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lr4/hs3;

    if-nez v0, :cond_1

    instance-of v0, p0, Lr4/tr3;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lr4/hs3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Lr4/hs3;-><init>(Lr4/is3;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lr4/hs3;->b:Ljava/lang/Object;

    sget-object v1, Lr4/hs3;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lr4/hs3;->a:Lr4/is3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/hs3;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lr4/hs3;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lr4/hs3;->a:Lr4/is3;

    :cond_1
    :goto_0
    return-object v0
.end method
