.class public final synthetic Lr4/n61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lr4/o61;

.field public final b:Lr4/h83;


# direct methods
.method public constructor <init>(Lr4/o61;Lr4/h83;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/n61;->a:Lr4/o61;

    iput-object p2, p0, Lr4/n61;->b:Lr4/h83;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/n61;->a:Lr4/o61;

    iget-object v1, p0, Lr4/n61;->b:Lr4/h83;

    invoke-virtual {v0, v1}, Lr4/o61;->c(Lr4/h83;)Lr4/og0;

    move-result-object v0

    return-object v0
.end method
