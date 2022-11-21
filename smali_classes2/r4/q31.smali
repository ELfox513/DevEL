.class public final synthetic Lr4/q31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/t73;


# direct methods
.method public constructor <init>(Lr4/t73;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/q31;->a:Lr4/t73;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/q31;->a:Lr4/t73;

    new-instance v1, Lr4/sv1;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lr4/sv1;-><init>(I)V

    invoke-interface {v0, v1}, Lr4/t73;->a(Ljava/lang/Throwable;)V

    return-void
.end method
