.class public final synthetic Lr4/ea2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lr4/fa2;


# direct methods
.method public constructor <init>(Lr4/fa2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ea2;->a:Lr4/fa2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/ea2;->a:Lr4/fa2;

    invoke-virtual {v0}, Lr4/fa2;->a()Lr4/ga2;

    move-result-object v0

    return-object v0
.end method
