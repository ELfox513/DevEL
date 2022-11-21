.class public final synthetic Lr4/v34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# static fields
.field public static final a:Lr4/p03;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/v34;

    invoke-direct {v0}, Lr4/v34;-><init>()V

    sput-object v0, Lr4/v34;->a:Lr4/p03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lr4/d44;

    sget-object v0, Lr4/y34;->x:Lr4/g04;

    return-object p1
.end method
