.class public final synthetic Lr4/zt2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/au2;


# direct methods
.method public constructor <init>(Lr4/au2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/zt2;->a:Lr4/au2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/zt2;->a:Lr4/au2;

    invoke-virtual {v0}, Lr4/au2;->c()V

    return-void
.end method
