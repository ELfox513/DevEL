.class public final synthetic Lr4/la0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lr4/u50;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lr4/u50;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/la0;->a:Ljava/lang/String;

    iput-object p2, p0, Lr4/la0;->b:Lr4/u50;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 2

    iget-object v0, p0, Lr4/la0;->a:Ljava/lang/String;

    iget-object v1, p0, Lr4/la0;->b:Lr4/u50;

    check-cast p1, Lr4/q90;

    invoke-interface {p1, v0, v1}, Lr4/q90;->A0(Ljava/lang/String;Lr4/u50;)V

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
