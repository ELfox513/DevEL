.class public final synthetic Lr4/cl2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/fl2;


# direct methods
.method public constructor <init>(Lr4/fl2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/cl2;->a:Lr4/fl2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 1

    iget-object v0, p0, Lr4/cl2;->a:Lr4/fl2;

    check-cast p1, Lr4/nr2;

    invoke-virtual {v0, p1}, Lr4/fl2;->d(Lr4/nr2;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
