.class public final synthetic Lr4/ma0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lr4/u50;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lr4/u50;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ma0;->a:Ljava/lang/String;

    iput-object p2, p0, Lr4/ma0;->b:Lr4/u50;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/ma0;->a:Ljava/lang/String;

    iget-object v1, p0, Lr4/ma0;->b:Lr4/u50;

    check-cast p1, Lr4/q90;

    invoke-interface {p1, v0, v1}, Lr4/q90;->U(Ljava/lang/String;Lr4/u50;)V

    return-object p1
.end method
