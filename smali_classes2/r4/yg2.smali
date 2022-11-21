.class public final synthetic Lr4/yg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# static fields
.field public static final a:Lr4/p03;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/yg2;

    invoke-direct {v0}, Lr4/yg2;-><init>()V

    sput-object v0, Lr4/yg2;->a:Lr4/p03;

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

    new-instance v0, Lr4/bh2;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lr4/bh2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
