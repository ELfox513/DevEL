.class public final synthetic Lr4/ju1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lr4/pu1;


# direct methods
.method public constructor <init>(Lr4/pu1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ju1;->a:Lr4/pu1;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/ju1;->a:Lr4/pu1;

    invoke-virtual {v0}, Lr4/pu1;->o()Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
