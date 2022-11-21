.class public final Lr4/e43;
.super Lr4/q53;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lr4/g43;


# direct methods
.method public constructor <init>(Lr4/g43;Ljava/util/ListIterator;)V
    .locals 0

    iput-object p1, p0, Lr4/e43;->b:Lr4/g43;

    invoke-direct {p0, p2}, Lr4/q53;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lr4/eq;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
