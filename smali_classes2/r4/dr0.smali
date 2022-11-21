.class public final synthetic Lr4/dr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lr4/fr0;


# direct methods
.method public constructor <init>(Lr4/fr0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/dr0;->a:Lr4/fr0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/dr0;->a:Lr4/fr0;

    invoke-virtual {v0}, Lr4/fr0;->y()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
