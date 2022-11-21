.class public final synthetic Lr4/yh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lr4/zh2;


# direct methods
.method public constructor <init>(Lr4/zh2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/yh2;->a:Lr4/zh2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/yh2;->a:Lr4/zh2;

    new-instance v1, Lr4/ai2;

    iget-object v0, v0, Lr4/zh2;->b:Ljava/util/List;

    invoke-direct {v1, v0}, Lr4/ai2;-><init>(Ljava/util/List;)V

    return-object v1
.end method
