.class public final synthetic Lr4/ae2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lr4/fe2;


# direct methods
.method public constructor <init>(Lr4/fe2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ae2;->a:Lr4/fe2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/ae2;->a:Lr4/fe2;

    invoke-virtual {v0}, Lr4/fe2;->b()Lr4/ge2;

    move-result-object v0

    return-object v0
.end method
