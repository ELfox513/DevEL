.class public final synthetic Lr4/hk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/c41;


# direct methods
.method public constructor <init>(Lr4/c41;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/hk0;->a:Lr4/c41;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/hk0;->a:Lr4/c41;

    invoke-virtual {v0}, Lr4/c41;->I()V

    return-void
.end method
