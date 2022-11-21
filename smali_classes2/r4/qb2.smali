.class public final synthetic Lr4/qb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# static fields
.field public static final a:Lr4/p03;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/qb2;

    invoke-direct {v0}, Lr4/qb2;-><init>()V

    sput-object v0, Lr4/qb2;->a:Lr4/p03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lm3/c;

    new-instance v0, Lr4/sb2;

    invoke-virtual {p1}, Lm3/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lm3/c;->b()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lr4/sb2;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
