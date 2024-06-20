package chap19.rentCar.window;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import chap19.rentCar.controller.RentCarController;
import chap19.rentCar.controller.RentCarcontrollerImpl;
import chap19.rentCar.vo.RentCarVO;

public class SearchRenDialog extends JDialog {
    private JTextField renNumberField;
    private JTextArea resultArea;
    private RentCarController controller;

	public SearchRenDialog(RentCarController rentcarController, String string) {
		// TODO Auto-generated constructor stub
	}

	private void initComponents() {
        setLayout(new BorderLayout());
        
        JPanel inputPanel = new JPanel(new GridLayout(2, 2));
        inputPanel.add(new JLabel("Rent Number:"));
        renNumberField = new JTextField(20);
        inputPanel.add(renNumberField);
        
        JButton searchButton = new JButton("Search");
        searchButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                searchRentCar();
            }
        });
        inputPanel.add(searchButton);

        JButton cancelButton = new JButton("Cancel");
        cancelButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                dispose();
            }
        });
        inputPanel.add(cancelButton);

        add(inputPanel, BorderLayout.NORTH);

        resultArea = new JTextArea(10, 30);
        resultArea.setEditable(false);
        add(new JScrollPane(resultArea), BorderLayout.CENTER);

        pack();
        setLocationRelativeTo(getOwner());
    }

    private void searchRentCar() {
        String renNumber = renNumberField.getText();
        RentCarVO vo = controller.checkNumber(renNumber);

        if (vo.getRenNumber() != null) {
            resultArea.setText("Rent Number: " + vo.getRenNumber() + "\n" +
                               "Color: " + vo.getRenColor() + "\n" +
                               "Displacement: " + vo.getRenDispla() + "\n" +
                               "Maker: " + vo.getRenMaker());
        } else {
            resultArea.setText("Rent Car not found.");
        }
    }
}
