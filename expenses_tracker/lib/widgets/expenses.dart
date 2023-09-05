import 'package:expenses_tracker/models/expense.dart';
import 'package:expenses_tracker/widgets/newExpenses.dart';
import 'package:expenses_tracker/widgets/expenses_list.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    final List<Expense> _registeredExpenses = [
      Expense(
          title: "Flutter course",
          amount: 20.00,
          date: DateTime.now(),
          category: Category.food),
      Expense(
          title: "Cinema",
          amount: 55.00,
          date: DateTime.now(),
          category: Category.leisure),
    ];

    void _openAddExpensesOverlay() {
      showModalBottomSheet(
        context: context,
        builder: (ctx) => NewExpenses(onAddExpense: _addExpense),
      );
    }

    void _addExpense(Expense expense) {
      setState(() {
        _registeredExpenses.add(expense);
      });
    }

    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
                onPressed: _openAddExpensesOverlay, icon: const Icon(Icons.add))
          ],
          backgroundColor: const Color.fromARGB(255, 97, 55, 168),
          title: const Text("Expense Tracker")),
      body: Column(
        children: [
          const Text("The chart"),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
