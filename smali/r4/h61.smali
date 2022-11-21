.class public final Lr4/h61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/i61;


# direct methods
.method public constructor <init>(Lr4/i61;)V
    .locals 0

    iput-object p1, p0, Lr4/h61;->a:Lr4/i61;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lr4/h61;->a:Lr4/i61;

    invoke-static {p1}, Lr4/i61;->d(Lr4/i61;)Lr4/b81;

    move-result-object p1

    invoke-virtual {p1}, Lr4/b81;->zza()V

    return-void
.end method
