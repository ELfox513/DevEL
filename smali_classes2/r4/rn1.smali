.class public final synthetic Lr4/rn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# instance fields
.field public final a:Lr4/fo1;


# direct methods
.method public constructor <init>(Lr4/fo1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/rn1;->a:Lr4/fo1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/rn1;->a:Lr4/fo1;

    check-cast p1, Lr4/cs0;

    invoke-virtual {v0, p1}, Lr4/fo1;->k(Lr4/cs0;)Lr4/cs0;

    return-object p1
.end method
