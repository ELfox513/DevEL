.class public final synthetic Lr4/zk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# instance fields
.field public final a:Lr4/dr2;


# direct methods
.method public constructor <init>(Lr4/dr2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/zk2;->a:Lr4/dr2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/zk2;->a:Lr4/dr2;

    check-cast p1, Lr4/i31;

    iput-object p1, v0, Lr4/dr2;->c:Lr4/i31;

    return-object v0
.end method
