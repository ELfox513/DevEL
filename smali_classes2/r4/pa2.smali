.class public final synthetic Lr4/pa2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# instance fields
.field public final a:Lr4/qa2;


# direct methods
.method public constructor <init>(Lr4/qa2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/pa2;->a:Lr4/qa2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/pa2;->a:Lr4/qa2;

    check-cast p1, Lr4/kg2;

    invoke-virtual {v0, p1}, Lr4/qa2;->a(Lr4/kg2;)Lr4/ra2;

    move-result-object p1

    return-object p1
.end method
